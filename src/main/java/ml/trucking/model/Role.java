package ml.trucking.model;

public class Role {
    private Integer id;
    private Integer userId;
    private String role;

    public Role() {
    }

    public Role(Integer id) {
        this.id = id;
    }

    public Role(Integer id, Integer userId, String role) {
        this.id = id;
        this.userId = userId;
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", userId=" + userId +
                ", role='" + role + '\'' +
                '}';
    }
}