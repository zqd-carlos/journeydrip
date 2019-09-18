package cn.journeydrip.mail;

import java.security.GeneralSecurityException;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.sun.mail.util.MailSSLSocketFactory;

/**
 * 这个类是用来发送邮件的类。由前台传递过来用户名，用户的邮件地址
 * 然后 由自己的一个qq账号向另外一个qq账号传递邮件 
 * 主题名设置为【用户名】+【可用邮箱】
 * 文本文件设置为用户想说的话，即【message】然后传递到我的邮箱中 发送人设置为一个账号
 * 发送密码设置为qq生成的pop3和smtp协议的授权码
 * 收件人设置为接受的账号，即主账号
 * @author admin
 *
 */
public class SEmail {
	/**
	 * 用来发送邮件的方法。利用这个方法来实现发送邮件功能
	 * 
	 * @return 发送邮件成功或者失败的消息
	 * @throws GeneralSecurityException
	 */
	public void sendemail(String name,String email,String sendmessage) throws GeneralSecurityException {
		// 收件人电子邮箱
		String to = "1437974793@qq.com";

		// 发件人电子邮箱
		String from = "1531941634@qq.com";

		// 指定发送邮件的主机为 smtp.qq.com
		String host = "smtp.qq.com"; // QQ 邮件服务器

		// 获取系统属性
		Properties properties = System.getProperties();

		// 设置邮件服务器
		properties.setProperty("mail.smtp.host", host);

		properties.put("mail.smtp.auth", "true");
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.ssl.socketFactory", sf);
		// 获取默认session对象
		Session session = Session.getDefaultInstance(properties, new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("1531941634@qq.com", "mkabqrjatsbkifib"); // 发件人邮件用户名密码
			}
		});

		try {
			// 创建默认的 MimeMessage 对象
			MimeMessage message = new MimeMessage(session);
			// Set From: 设置发送端
			message.setFrom(new InternetAddress(from));
			// Set To: 设置接收端
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: 设置主题
			// 设置文件的主题，设置为用户名加邮箱的格式
			// 主题格式为【username】+【email】
			message.setSubject("【姓名:】"+name+"   【邮箱地址：】"+email);

			// 设置消息体
			// 将这里设置为用户填的message的内容
			message.setText(sendmessage);

			// 发送消息
			Transport.send(message);
			System.out.println("邮件发送成功");

		} catch (MessagingException mex) {
			mex.printStackTrace();
			throw new RuntimeException("邮件发送失败");
		}

	}

}