package tyut.selab.common.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName: TyutLoginLogEntity
 * @Description: 登陆日志
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 18:02
 * @Version: 1.0
 **/
@TableName("tyut_login_log")
@Schema(description = "登陆日志")
@Data
@NoArgsConstructor
public class TyutLoginLogEntity {
    /**
     * 登录日志id
     */
    @TableField("login_log_id")
    private int loginLogId;
    /**
     * 用户id
     */
    @TableField("user_id")
    private long userId;
    /**
     * 登陆时间
     */
    @TableField("login_time")
    private String loginTime;
    /**
     * 登陆IP
     */
    @TableField("login_ip")
    private String loginIp;
    /**
     * 登陆状态 1成功 0失败
     */
    @TableField("login_state")
    private String loginState;
    /**
     * 登陆次数
     */
    @TableField("login_total")
    private int loginTotal;
}
