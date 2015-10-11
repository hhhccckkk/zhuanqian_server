package com.hck.dabao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class DaBao {
	public  void getAppUrl(String appName,long uid1, long uid2, long uid3, long uid4,
			long uid5,long uid6,long uid7,long uid8, DaoBaoOnErrorListener listener) throws IOException {
		OutputStreamWriter osw = null;
		Process process = null;
		try {
			String path = "D:\\apktool\\";
			String appPath = "D:\\tomcat7\\webapps\\ROOT\\apk\\";
			File file = new File(path);

			process = Runtime.getRuntime().exec(
					"cmd.exe /c apktool d " + appPath + "app.apk " + appPath
							+ "app", null, file);
			if (process.waitFor() != 0) {
				 listener.onErrorListener("½âÑ¹Ê§°Ü11111");
			}
			String targetPath = appPath + "app\\res\\raw\\id.txt";
			String content = uid1 + "," + uid2 + "," + uid3 + "," + uid4 + ","
					+ uid5 +","+uid6+","+uid7+","+uid8;
			osw = new OutputStreamWriter(new FileOutputStream(targetPath));
			osw.write(content, 0, content.length());
			osw.flush();

			process = Runtime.getRuntime().exec(
					"cmd.exe /c apktool b " + appPath + "app " + appPath
							+ "dabao.apk", null, file);
			if (process.waitFor() != 0) {
				listener.onErrorListener("´ò°üÊ§°Ü");
				return;
			}
			String jdkBinPath = "D:\\javasdk\\bin";
			File bin = new File(jdkBinPath);
			String cmd1 = "cmd.exe /c jarsigner -keystore D:\\qianming\\my.keystore -storepass hck429539 -signedjar D:\\tomcat7\\webapps\\ROOT\\apk\\";
			String cmd2 = appName + ".apk";
			String cmd3 = " -digestalg SHA1 -sigalg MD5withRSA D:\\tomcat7\\webapps\\ROOT\\apk\\dabao.apk  my.keystore";
			process = Runtime.getRuntime().exec(cmd1 + cmd2 + cmd3, null, bin);
			if (process.waitFor() != 0) {
				listener.onErrorListener("Ç©ÃûÊ§°Ü");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
			listener.onErrorListener("´ò°üÊ§°Ü2222"+e.toString());
			return;
		} finally {
			osw.close();
		}
		listener.onSuccess();
	}
}
