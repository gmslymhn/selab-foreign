package tyut.selab.common.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

/**
 * @ClassName: TyutUserInformationEntity
 * @Description: 用户信息
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 17:27
 * @Version: 1.0
 **/
@TableName("tyut_user_information")
@Data
public class TyutUserInformationEntity {
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
     * 用户姓名
     */
    @NotBlank(message = "姓名不能为空")
    @Size(min = 1, max = 20, message = "姓名必须在1~20字符之间")
    @TableField("user_name")
    private String userName;
    /**
     * 用户性别
     */
    @TableField("user_sex")
    private String userSex;
    /**
     * 电话
     */
    @TableField("user_phone")
    @NotBlank(message = "电话不能为空")
    @Size(min=11, max=11,message="电话长度必须在为11位")
    private String userPhone;
    /**
     * 邮箱
     */
    @TableField("user_email")
    private String userEmail;
    /**
     * 备注
     */
    @TableField("remark")
    private String remark;
    /**
     * 创建用户
     */
    @TableField("create_user")
    private long createUser;
    /**
     * 创建时间
     */
    @TableField("create_time")
    private String createTime;
    /**
     * 修改用户
     */
    @TableField("update_user")
    private long updateUser;
    /**
     * 修改时间
     */
    @TableField("update_time")
    private String updateTime;
    /**
     * 逻辑删除(1删除 0未删除)
     */
    @TableField("del_flag")
    private String delFlag;
}
