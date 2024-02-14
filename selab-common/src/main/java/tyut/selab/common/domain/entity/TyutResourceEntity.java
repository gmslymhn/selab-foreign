package tyut.selab.common.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName: TyutResource
 * @Description: 静态资源
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 17:53
 * @Version: 1.0
 **/
@TableName("tyut_resource")
@Data
@NoArgsConstructor
public class TyutResourceEntity {
    /**
     * 静态资源id
     */
    @TableField("resource_id")
    private long resourceId;
    /**
     * 资源名称
     */
    @TableField("resource_name")
    private String resourceName;
    /**
     * 资源描述
     */
    @TableField("resource_description")
    private String resourceDescription;
    /**
     * 资源路径
     */
    @TableField("resource_path")
    private String resourcePath;
    /**
     * 资源类型 (0文本 1图片 2视频)
     */
    @TableField("resource_type")
    private String resourceType;
    /**
     * 资源状态 1停用 0未停用
     */
    @TableField("resource_state")
    private String resourceState;
}
