package tyut.selab.common.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName: TyutUserEntity
 * @Description: 用户
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 17:12
 * @Version: 1.0
 **/
@TableName("tyut_user")
@Data
@NoArgsConstructor
public class TyutUserEntity {
    /**
     * 用户id
     */
    @TableField("user_id")
    private long userId;
    /**
     * 账号
     */
    @TableField("user_account")
    @NotBlank(message = "账号不能为空")
    @Size(min = 5, max = 20, message = "账号必须在5~20字符之间")
    private String userAccount;
    /**
     * 密码
     */
    @TableField("user_password")
    @NotBlank(message = "用户密码不能为空")
    @Size(min=6, max=15,message="密码长度必须在 6 ~ 15 字符之间")
    private String userPassword;
    /**
     * 用户姓名
     */
    @NotBlank(message = "姓名不能为空")
    @Size(min = 1, max = 20, message = "姓名必须在1~20字符之间")
    @TableField("user_name")
    private String userName;
    /**
     * 头像id
     */
    @TableField("user_avatar")
    private String userAvatar;
    /**
     * 登陆次数
     */
    @TableField("login_total")
    private String loginTotal;
    /**
     * 最后登陆ip
     */
    @TableField("last_login_ip")
    private String lastLoginIp;
    /**
     * 用户最后一次登陆时间
     */
    @TableField("last_logintime_time")
    private String lastLoginTime;
    /**
     * 用户登陆状态
     */
    @TableField("user_state")
    private int userState;
}
