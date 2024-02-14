package tyut.selab.foreign.enums;

import lombok.Getter;

/**
 * @ClassName: ForeignBizCodeEnum
 * @Description: 错误码和错误信息定义类
 * @Author: gmslymhn
 * @CreateTime: 2024-02-12 09:22
 * @Version: 1.0
 **/
@Getter
public enum ForeignBizCodeEnum {
    UNKNOWN_EXCEPTION(10000, "系统未知错误"),
    VALID_EXCEPTION(10001, "参数校验异常"),
    SMS_CODE_EXCEPTION(10002, "验证码获取频率太高，请稍后再试"),
    TOO_MANY_REQUEST(10003, "请求流量过大，请稍后再试"),
    TOO_MANY_File(10004, "上传文件数量超限，请明日上传"),
    CODE_ERROR(10005, "验证码错误"),
    NO_THREE_CATEGORY(10010, "禁止添加三级分类"),
    CATEGORY_NAME_REPEAT(10011, "分类名称重复"),
    CATEGORY_SLUG_REPEAT(10012, "分类缩写名重复"),
    CATEGORY_NOT_EXIST(10013, "分类不存在"),

    TAG_NAME_REPEAT(10021, "标签缩写名重复"),
    USER_EXIST_EXCEPTION(15001, "用户已经存在"),

    PHONE_EXISTS_EXCEPTION(15002, "手机号已存在"),

    LOGIN_ACCOUNT_PASSWORD_INVALID(15003, "用户名或密码错误");
    private Integer code;
    private String msg;

    private ForeignBizCodeEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

}
