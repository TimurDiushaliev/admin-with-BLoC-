abstract class UserEvent {}

class FetchAllUsersEvent extends UserEvent {}

class FetchPresentUsersEvent extends UserEvent {}

class FetchMissingUsersEvent extends UserEvent {}

class CreateUserEvent extends UserEvent {}

class DeleteUserEvent extends UserEvent {}
