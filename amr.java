import java.util.*;

public class CfgLeftRecElim {

    private List<String> variables;
    private List<String> terminals;
    private Map<String, List<String>> rulesMap;

    public CfgLeftRecElim(String cfgString) {
        parseCfg(cfgString);
    }

    private void parseCfg(String cfgString) {
        String[] parts = cfgString.trim().split("#");
        variables = new ArrayList<>(Arrays.asList(parts[0].split(";")));
        terminals = new ArrayList<>(Arrays.asList(parts[1].split(";")));
        rulesMap = new LinkedHashMap<>();
        String[] rawRules = parts[2].split(";");
        for (String rule : rawRules) {
            String[] sides = rule.split("/");
            String left = sides[0];
            List<String> rights = new ArrayList<>(Arrays.asList(sides[1].split(",")));
            rulesMap.put(left, rights);
        }
    }

    public void eliminateLeftRecursion() {
        List<String> newVariables = new ArrayList<>(variables);
        Map<String, List<String>> newRulesMap = new LinkedHashMap<>();

        for (int i = 0; i < newVariables.size(); i++) {
            String Ai = newVariables.get(i);
            List<String> rulesI = new ArrayList<>(rulesMap.getOrDefault(Ai, new ArrayList<>()));

            // حذف left recursion غير المباشر
            for (int j = 0; j < i; j++) {
                String Aj = newVariables.get(j);
                List<String> newRules = new ArrayList<>();
                for (String rule : rulesI) {
                    if (rule.startsWith(Aj)) {
                        for (String gamma : newRulesMap.get(Aj)) {
                            newRules.add(gamma + rule.substring(Aj.length()));
                        }
                    } else {
                        newRules.add(rule);
                    }
                }
                rulesI = newRules;
            }

            // حذف left recursion المباشر
            List<String> alpha = new ArrayList<>();
            List<String> beta = new ArrayList<>();
            for (String rule : rulesI) {
                if (rule.startsWith(Ai)) {
                    alpha.add(rule.substring(Ai.length()));
                } else {
                    beta.add(rule);
                }
            }

            if (!alpha.isEmpty()) {
                String AiDash = Ai + "'";
                while (newVariables.contains(AiDash)) {
                    AiDash += "'";
                }
                newVariables.add(i + 1, AiDash);

                List<String> betaRules = new ArrayList<>();
                for (String b : beta) {
                    betaRules.add(b + AiDash);
                }
                newRulesMap.put(Ai, betaRules);

                List<String> alphaRules = new ArrayList<>();
                for (String a : alpha) {
                    alphaRules.add(a + AiDash);
                }
                alphaRules.add("e");
                newRulesMap.put(AiDash, alphaRules);
            } else {
                newRulesMap.put(Ai, rulesI);
            }
        }

        // تحديث المتغيرات والقواعد
        variables = newVariables;
        rulesMap = newRulesMap;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.join(";", variables));
        sb.append("#");
        sb.append(String.join(";", terminals));
        sb.append("#");
        List<String> rulesStr = new ArrayList<>();
        for (String var : variables) {
            if (rulesMap.containsKey(var)) {
                String right = String.join(",", rulesMap.get(var));
                rulesStr.add(var + "/" + right);
            }
        }
        sb.append(String.join(";", rulesStr));
        return sb.toString();
    }

    // Main for testing
    public static void main(String[] args) {
        // مثال مطابق لما في الصور
        Scanner sc = new Scanner(System.in);
        String inputCfg = sc.nextLine();
        CfgLeftRecElim cfg = new CfgLeftRecElim(inputCfg);
        cfg.eliminateLeftRecursion();
        String outputCfg = cfg.toString();
        System.out.println(outputCfg);
    }
}
