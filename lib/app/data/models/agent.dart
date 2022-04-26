class Agent {
  final String firstName;
  final String lastName;
  final String? loanAmount;
  final String? loanAmountDue;
  final String? loanPaymentDate;

  Agent.fromMap(Map<String, dynamic> data)
      : firstName = data["agent"]["first_name"],
        lastName = data["agent"]["last_name"],
        loanAmount = data["agent"]["recent_loan"]?["agent_loan"]["loan_amount"]
            .toString(),
        loanAmountDue = data["agent"]["recent_loan"]?["agent_loan"]
                ["loan_amount_due"]
            .toString(),
        loanPaymentDate =
            data["agent"]["recent_loan"]?["agent_loan"]["loan_payment_date"];
}

class AgentsList {
  final String title;
  late List agentsData;

  List<Agent> agentsList() {
    List<Agent> agents = [];
    for (var agent in agentsData) {
      agents.add(Agent.fromMap(agent));
    }

    return agents;
  }

  AgentsList.fromMap(this.title, this.agentsData);
}
