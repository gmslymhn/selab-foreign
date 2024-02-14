package tyut.selab.framwork.web.exception;

import io.swagger.v3.core.util.Json;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import tyut.selab.common.domain.JsonResult;

/**
 * @ClassName: AllExceptionHandler
 * @Description: 全局异常处理
 * @Author: gmslymhn
 * @CreateTime: 2024-02-14 20:28
 * @Version: 1.0
 **/
@ControllerAdvice
public class AllExceptionHandler {
    //进行异常处理，处理Exception.class的异常
    @ExceptionHandler(Exception.class)
    @ResponseBody //返回json数据
    public JsonResult doException(Exception ex){
        ex.printStackTrace();
        return JsonResult.error(-999,"系统异常");
    }

}