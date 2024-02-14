package tyut.selab.common.annotation;

import java.lang.annotation.*;

/**
 * @ClassName: Log
 * @Description: 日志注解
 * @Author: gmslymhn
 * @CreateTime: 2024-02-07 22:29
 * @Version: 1.0
 **/
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {
}
