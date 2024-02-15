package tyut.selab.common.domain;

import lombok.Data;
import tyut.selab.common.exception.ErrorCode;
import tyut.selab.common.utils.MessageUtils;

import java.io.Serializable;

/**
 * @ClassName: Result
 * @Description: 统一返回类
 * @Author: gmslymhn
 * @CreateTime: 2024-02-08 00:13
 * @Version: 1.0
 **/
@Data
public class JsonResult implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 编码：200表示成功，其他值表示失败
     */
    private int code = 200;
    /**
     * 消息内容
     */
    private String msg = "success";
    /**
     * 响应数据
     */
    private Object data;

    public static JsonResult ok(Object data) {
        JsonResult result = new JsonResult();
        result.setCode(200);
        result.setData(data);
        return result;
    }

    public static JsonResult error() {
        JsonResult result = new JsonResult();
        result.setCode(ErrorCode.INTERNAL_SERVER_ERROR);
        result.setMsg(MessageUtils.getMessage(result.code));
        return result;
    }

    public static JsonResult error(int code) {
        JsonResult result = new JsonResult();
        result.setCode(code);
        result.setMsg(MessageUtils.getMessage(result.code));
        return result;
    }

    public static JsonResult error(int code, String msg) {
        JsonResult result = new JsonResult();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }

    public static JsonResult error(String msg) {
        JsonResult result = new JsonResult();
        result.setCode( ErrorCode.INTERNAL_SERVER_ERROR);
        result.setMsg(msg);
        return result;
    }

}
