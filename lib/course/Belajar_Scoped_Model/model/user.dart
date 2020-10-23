class User {
  final String login;
  final int id;
  final String nodeId;
  final String type;
  final String avatarUrl;

  User({this.login, this.id, this.nodeId, this.type, this.avatarUrl});

  factory User.fromJson(Map<String, dynamic> data) => User(
    login: data['login'],
    id: data['id'],
    nodeId: data['nodeId'],
    type: data['type'],
    avatarUrl: data['avatar_url']
  );
}