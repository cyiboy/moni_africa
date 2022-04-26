

import 'agent.dart';

class ClusterModel {
  final String purseBalance;
  final String totalInterestEarned;
  final String totalOwedByMembers;
  final String clusterName;
  final String repaymentRate;
  final String repaymentDay;

  final AgentsList dueAgents;
  final AgentsList activeAgents;
  final AgentsList inactiveAgents;
  final AgentsList overDueAgents;

  ClusterModel.fromMap(Map<String, dynamic> data)
      : purseBalance = data["cluster_purse_balance"].toString(),
        totalInterestEarned = data["total_interest_earned"].toString(),
        totalOwedByMembers = data["total_owed_by_members"].toString(),
        clusterName = data["cluster_name"],
        repaymentRate = data["cluster_repayment_rate"].toString(),
        repaymentDay = data["cluster_repayment_day"].toString(),
        dueAgents = AgentsList.fromMap("Due Today", data["due_agents"]),
        activeAgents =
            AgentsList.fromMap("Active Loan", data["active_agents"]),
        inactiveAgents =
            AgentsList.fromMap("Inactive Loan", data["inactive_agents"]),
        overDueAgents =
            AgentsList.fromMap("Overdue Loans", data["overdue_agents"]);
}
