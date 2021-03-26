package cn.itcast.domain;

/**
 * @author LD
 * @date 2021/3/16 - 14:47
 **/
public class user {
    public String username;
    public String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public user(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public user() {
    }

    @Override
    public String toString() {
        return "user{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
