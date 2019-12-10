package Flower.minima.system.network.rpc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class RPCClient {

	public static String USER_AGENT = "Minima/1.0";
	
	private static String sendGET(String zHost) throws IOException {
		//Create the URL
		URL obj = new URL(zHost);
		
		//Open her up
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", USER_AGENT);
		int responseCode = con.getResponseCode();
		
//		System.out.println("GET Response Code :: " + responseCode);
//		System.out.println("GET Response Code :: " + responseCode);
//		System.out.println("GET Response Code :: " + responseCode);
//		System.out.println("GET Response Code :: " + responseCode);
//		System.out.println("GET Response Code :: " + responseCode);
		StringBuffer response = new StringBuffer();
		
		if (responseCode == HttpURLConnection.HTTP_OK) { // success
			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String inputLine;
			

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();

			// print result
			System.out.println(response.toString());
		} else {
//			System.out.println("GET request not worked");
		}
		
		return response.toString(); 
	}

//	private static void sendPOST() throws IOException {
//		URL obj = new URL(POST_URL);
//		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
//		con.setRequestMethod("POST");
//		con.setRequestProperty("User-Agent", USER_AGENT);
//
//		// For POST only - START
//		con.setDoOutput(true);
//		OutputStream os = con.getOutputStream();
//		os.write(POST_PARAMS.getBytes());
//		os.flush();
//		os.close();
//		// For POST only - END
//
//		int responseCode = con.getResponseCode();
//		System.out.println("POST Response Code :: " + responseCode);
//
//		if (responseCode == HttpURLConnection.HTTP_OK) { //success
//			BufferedReader in = new BufferedReader(new InputStreamReader(
//					con.getInputStream()));
//			String inputLine;
//			StringBuffer response = new StringBuffer();
//
//			while ((inputLine = in.readLine()) != null) {
//				response.append(inputLine);
//			}
//			in.close();
//
//			// print result
//			System.out.println(response.toString());
//		} else {
//			System.out.println("POST request not worked");
//		}
//	}

	
	public static void main(String[] zArgs) {		
		
		//Get the Parameters
		String host = zArgs[0];
		int port    = Integer.parseInt(zArgs[1]);
		
		//The request..
		String request = zArgs[2];
		
		try {
			//Construct
			String url = "http://"+host+":"+port+"/"+URLEncoder.encode(request, "UTF-8");
		
			System.out.println("GET "+url);
			
			//Do it..
			sendGET(url);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
