package tyut.selab.common.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

/**
 * @ClassName: TyutUserSaltEntity
 * @Description: 用户盐
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 17:21
 * @Version: 1.0
 **/
@TableName("tyut_user_salt")
@Data
public class TyutUserSaltEntity {
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
     * 盐
     */
    @TableField("uesr_salt")
    private String userSalt;
    /**
     * 角色id
     */
    @TableField("role_id")
    private int roleId;
    /**
     * 归属id
     */
    @TableField("ascription_id")
    private int ascriptionId;

}
