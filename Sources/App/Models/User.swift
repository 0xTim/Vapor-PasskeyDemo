import Fluent
import Vapor

final class User: Model, Content {
    static let schema: String = "users"
    
    @ID
    var id: UUID?
    
    @Field(key: "username")
    var username: String
    
    init() {}
    
    init(id: UUID? = nil, username: String) {
        self.id = id
        self.username = username
    }
}

extension User: ModelSessionAuthenticatable {}
