package tyut.selab.common.utils;

import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;

/**
 * @ClassName: MessageUtils
 * @Description: 国际化
 * @Author: gmslymhn
 * @CreateTime: 2024-02-08 00:16
 * @Version: 1.0
 **/
public class MessageUtils {

    private static MessageSource messageSource;

    public static String getMessage(int code){
        return getMessage(code, new String[0]);
    }

    public static String getMessage(int code, String... params){
        return messageSource.getMessage(code+"", params, LocaleContextHolder.getLocale());
    }

}
