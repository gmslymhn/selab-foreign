package tyut.selab.common.utils.uuid;

import cn.hutool.core.lang.UUID;

/**
 * @ClassName: IdUtils
 * @Description: 随机生成id工具类
 * @Author: gmslymhn
 * @CreateTime: 2024-02-11 14:36
 * @Version: 1.0
 **/
public class IdUtils {

    /**
     * 获取随机UUID，使用性能更好的ThreadLocalRandom生成UUID
     *
     * @return 随机UUID
     */
    public static String fastUUID()
    {
        return UUID.fastUUID().toString();
    }

    /**
     * 简化的UUID，去掉了横线，使用性能更好的ThreadLocalRandom生成UUID
     *
     * @return 简化的UUID，去掉了横线
     */
    public static String fastSimpleUUID()
    {
        return UUID.fastUUID().toString(true);
    }
}

