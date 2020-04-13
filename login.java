
public class login {
	private static String vendorid;
	private static String customerid;
	private static String servicetype;
	private static String city;
	private static String cvendorid;
	private static String cservicetype;
	private static String ccategory;
	private static String cname;
	private static String cnum;
	private static String address;
	private static String vendornumber;
	private static String rand,amount;
	public static String getAmount() {
		return amount;
	}

	public static void setAmount(String amount) {
		login.amount = amount;
	}

	public static String getRand() {
		return rand;
	}

	public static void setRand(String rand) {
		login.rand = rand;
	}

	public static String getVendornumber() {
		return vendornumber;
	}

	public static void setVendornumber(String vendornumber) {
		login.vendornumber = vendornumber;
	}

	public String getVendorid() {
		return vendorid;
	}

	public static String getCustomerid() {
		return customerid;
	}

	public static void setCustomerid(String customerid) {
		login.customerid = customerid;
	}

	public static String getServicetype() {
		return servicetype;
	}

	public static void setServicetype(String servicetype) {
		login.servicetype = servicetype;
	}

	public static String getCity() {
		return city;
	}

	public static void setCity(String city) {
		login.city = city;
	}

	public void setVendorid(String vendorid) {
		this.vendorid = vendorid;
	}

	public static String getCvendorid() {
		return cvendorid;
	}

	public static void setCvendorid(String cvendorid) {
		login.cvendorid = cvendorid;
	}

	public static String getCservicetype() {
		return cservicetype;
	}

	public static void setCservicetype(String cservicetype) {
		login.cservicetype = cservicetype;
	}

	public static String getCcategory() {
		return ccategory;
	}

	public static void setCcategory(String ccategory) {
		login.ccategory = ccategory;
	}

	public static String getCname() {
		return cname;
	}

	public static void setCname(String cname) {
		login.cname = cname;
	}

	public static String getCnum() {
		return cnum;
	}

	public static void setCnum(String cnum) {
		login.cnum = cnum;
	}

	public static String getAddress() {
		return address;
	}

	public static void setAddress(String address) {
		login.address = address;
	}
}
