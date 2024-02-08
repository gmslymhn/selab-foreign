package tyut.selab.common.utils;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import lombok.extern.slf4j.Slf4j;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
/**
 * @ClassName: ImgPostUfils
 * @Description: 图床工具类==========将图片转化为图床
 * @Author: gmslymhn
 * @CreateTime: 2024-02-07 23:15
 * @Version: 1.0
 **/
@Slf4j
public class ImgPostUtils {
    public  String ImgPost1(String path) {

        String url = "https://pics.sunbangyan.cn/application/upload.php";
        String filePath = path; // 替换为实际文件路径
        String changeUrl=null;
        try {
            File file = new File(filePath);
            URL uploadUrl = new URL(url);
            HttpURLConnection connection = (HttpURLConnection) uploadUrl.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");

            String boundary = Long.toHexString(System.currentTimeMillis());
            connection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
            try (
                    OutputStream output = connection.getOutputStream();
                    FileInputStream fileInput = new FileInputStream(file);
            ) {
                output.write(("--" + boundary + "\r\n").getBytes());
                output.write(("Content-Disposition: form-data; name=\"file\"; filename=\"" + file.getName() + "\"\r\n").getBytes());
                output.write(("Content-Type: application/octet-stream\r\n\r\n").getBytes());

                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = fileInput.read(buffer)) != -1) {
                    output.write(buffer, 0, bytesRead);
                }

                output.write(("\r\n--" + boundary + "--\r\n").getBytes());
            }
            file.deleteOnExit();

            int responseCode = connection.getResponseCode();
            System.out.println("文件上传响应: " + responseCode);
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line;
            StringBuilder response = new StringBuilder();
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            reader.close();
            log.info("服务器响应内容: " + response);
            Gson gson = new Gson();
            Map<String, Object> data = gson.fromJson(String.valueOf(response), Map.class);
            String result = (String) data.get("result");
            changeUrl = (String) data.get("url");
            String srcName = (String) data.get("srcName");
            String thumb = (String) data.get("thumb");
            String del = (String) data.get("del");

            log.info("Result: " + result);
            log.info("URL: " + changeUrl);
            log.info("Source Name: " + srcName);
            log.info("Thumbnail URL: " + thumb);
            log.info("Delete URL: " + del);
            return changeUrl;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return changeUrl;
    }

}
