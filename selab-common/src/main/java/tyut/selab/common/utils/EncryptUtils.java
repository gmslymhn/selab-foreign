package tyut.selab.common.utils;

import java.security.MessageDigest;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

/**
 * @ClassName: EncryptUtils
 * @Description: 加密工具类
 * @Author: gmslymhn
 * @CreateTime: 2024-02-07 22:52
 * @Version: 1.0
 **/
public class EncryptUtils {
    /**
     *
     * @param Password
     * @param Sale
     * @description SHA-1加密 不可逆
     * @return
     */
    public static String Encrypt(String Password,String Sale){
        try {
            Password = Password.concat(Sale);
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            md.update(Password.getBytes("utf-8"));
            byte[] digest = md.digest();
            return String.valueOf(Hex.encodeHex(digest));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    /**
     * Base64加密--可逆
     */
    public static String Base64Encrypt(String userAccount,String token,int roleId) {
        Base64 base64 = new Base64();
        token = base64.encodeToString(token.getBytes());
        String str = userAccount + "-" + token + "-" + String.valueOf(roleId);
        str = base64.encodeToString(str.getBytes());
        return str;
    }
    /**
     * Base64解密
     */
    public static String  Base64Decrypt(String token){
        Base64 base64 = new Base64();
        String s = new String(base64.decode(token));
        return s;
    }
}
