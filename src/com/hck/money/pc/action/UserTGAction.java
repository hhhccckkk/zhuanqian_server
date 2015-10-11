package com.hck.money.pc.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.hck.dabao.DaBao;
import com.hck.dabao.DaoBaoOnErrorListener;
import com.hck.money.bean.TGApp;
import com.hck.money.bean.User;
import com.hck.money.bean.UserTg;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserAppDao;
import com.hck.money.dao.UserDao;
import com.hck.money.daoserver.TGAppServer;
import com.hck.money.daoserver.UserMoneyServer;
import com.hck.money.daoserver.UserTgServer;
import com.hck.money.vo.PaiHangBean;

public class UserTGAction extends BaseAction {
	private UserMoneyServer moneyServer;
	private List<PaiHangBean> paiHangBeans;

	public List<PaiHangBean> getPaiHangBeans() {
		return paiHangBeans;
	}

	public void setPaiHangBeans(List<PaiHangBean> paiHangBeans) {
		this.paiHangBeans = paiHangBeans;
	}

	public UserMoneyServer getMoneyServer() {
		return moneyServer;
	}

	public void setMoneyServer(UserMoneyServer moneyServer) {
		this.moneyServer = moneyServer;
	}

	private long uid;
	private TGApp tgApp;
	private TGAppServer tAppServer;
	private UserDao uDao;
	TGApp app;

	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}

	boolean isok = false;

	public long getUid() {
		return uid;
	}

	public TGApp getTgApp() {
		return tgApp;
	}

	public void setTgApp(TGApp tgApp) {
		this.tgApp = tgApp;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public TGAppServer gettAppServer() {
		return tAppServer;
	}

	public void settAppServer(TGAppServer tAppServer) {
		this.tAppServer = tAppServer;
	}

	public String getUserTgInfo() {
		tgApp = new TGApp();
		if (uid <= 0) {
			tgApp.setDownUrl("apk/app.apk");
		} else {
			long id = uid - 1000;
			User user = uDao.getUser(id);
			if (user == null || user.getIsok() == 0) {
				tgApp.setDownUrl("apk/app.apk");
			}
			tgApp = tAppServer.getUserTGUrl(id);
			if (tgApp == null) {
				if (!daBao()) {
					tgApp = new TGApp();
					tgApp.setDownUrl("apk/app.apk");
				} else {
					if (app != null) {
						tgApp = app;
					}
				}
			}
		}
		List<Usermoney> userMoney = moneyServer.getPH();
		if (userMoney != null && !userMoney.isEmpty()) {
			paiHangBeans = changeBean(userMoney);
		}
		if (isPhone()) {
			return "phone";
		}
		return SUCCESS;
	}

	private List<PaiHangBean> changeBean(List<Usermoney> usermoneys) {
		List<PaiHangBean> paiHangs = new ArrayList<PaiHangBean>();
		PaiHangBean paiHangBean = null;
		for (int i = 0; i < usermoneys.size(); i++) {
			paiHangBean = new PaiHangBean();
			Usermoney usermoney = usermoneys.get(i);
			long allMoney = usermoney.getAllmoney();

			paiHangBean.setAllMoney(allMoney + "");
			long tgMoney = usermoney.getTjmoney();
			String tgMoneyString = (((double) tgMoney) / 1000) + "";
			paiHangBean.setTgMoney(tgMoneyString);
			paiHangBean.setTgSize(usermoney.getUser().getTj() + "");
			paiHangBean.setTx(usermoney.getUser().getTouxiang());
			paiHangBean.setUid(usermoney.getUser().getId());
			paiHangBean.setUserName(usermoney.getUser().getNicheng());
			paiHangs.add(paiHangBean);
		}

		return paiHangs;

	}

	private boolean isPhone() {
		init();
		String ua = request.getHeader("User-Agent").toLowerCase();
		if (ua.matches("(?i).*((android|bb\\d+|meego).+mobile|avantgo|bada\\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\\.(browser|link)|vodafone|wap|windows ce|xda|xiino).*")
				|| ua.substring(0, 4)
						.matches(
								"(?i)1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\\-|your|zeto|zte\\-")) {
			return true;
		} else {
			return false;
		}
	}

	public HttpServletRequest request = null;
	public HttpServletResponse response = null;
	String appName = null;

	public void init() {
		if (response == null) {
			response = ServletActionContext.getResponse();
		}
		if (request == null) {
			request = ServletActionContext.getRequest();
		}
		response = ServletActionContext.getResponse();
		request = ServletActionContext.getRequest();
		response.setContentType("text/json;charset=utf-8");
		response.setCharacterEncoding("UTF-8");

	}

	public boolean daBao() {
		long id = uid - 1000;
		User user = uDao.getOneUser(id);
		long uid1 = 0l;
		long uid2 = 0l;
		long uid3 = 0l;
		long uid4 = 0l;
		long uid5 = 0l;
		long uid6 = 0l;
		long uid7 = 0l;
		if (user != null) {

			if (user.getShangjia1() != null) {
				uid1 = user.getShangjia1();
			}

			if (user.getShangjia2() != null) {
				uid2 = user.getShangjia2();
			}

			if (user.getShangjia3() != null) {
				uid3 = user.getShangjia3();
			}

			if (user.getShangjia4() != null) {
				uid4 = user.getShangjia4();
			}
			if (user.getShangjia5() != null) {
				uid5 = user.getShangjia5();
			}
			if (user.getShangjia6() != null) {
				uid6 = user.getShangjia6();
			}
			if (user.getShangjia7() != null) {
				uid7 = user.getShangjia7();
			}

		} else {
			return false;
		}

		try {
			appName = user.getMac();
			if (appName == null) {
				return false;
			}
			if (appName.length() > 5) {
				appName = appName.substring(0, 5);
			}
			appName = appName + id;
			DaBao daBao =new DaBao();
			daBao.getAppUrl(appName, id, uid1, uid2, uid3, uid4, uid5, uid6,
					uid7, new DaoBaoOnErrorListener() {

						public void onErrorListener(String errorString) {

						}

						public void onSuccess() {
							boolean success = addDownUrl(appName);
							if (success) {
								isok = true;
							} else {
								isok = false;
							}

						}
					});
		} catch (IOException e) {
			e.printStackTrace();
			isok = false;
		}

		return isok;
	}

	private boolean addDownUrl(String appName) {
		long id2 = uid - 1000;
		app = new TGApp();
		app.setDownUrl("apk/" + appName + ".apk");
		app.setSize(0);
		app.setTime(new Timestamp(System.currentTimeMillis()).toString());
		app.setUid(id2);
		boolean isok = tAppServer.addTgApp(app);
		return isok;

	}

}
