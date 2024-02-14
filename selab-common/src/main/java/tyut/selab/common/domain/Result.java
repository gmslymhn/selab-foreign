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
public class Result implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 编码：0表示成功，其他值表示失败
     */
    private int code = 0;
    /**
     * 消息内容
     */
    private String msg = "success";
    /**
     * 响应数据
     */
    private Object data;

    public static Result ok(Object data) {
        Result result = new Result();
        result.setCode(0);
        result.setData(data);
        return result;
    }

    public static boolean success(){
        Result result = new Result();
        return result.code==0;
    }

    public static Result error() {
        Result result = new Result();
        result.setCode(ErrorCode.INTERNAL_SERVER_ERROR);
        result.setMsg(MessageUtils.getMessage(result.code));
        return result;
    }

    public static Result error(int code) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(MessageUtils.getMessage(result.code));
        return result;
    }

    public static Result error(int code, String msg) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }

    public static Result error(String msg) {
        Result result = new Result();
        result.setCode( ErrorCode.INTERNAL_SERVER_ERROR);
        result.setMsg(msg);
        return result;
    }

}
