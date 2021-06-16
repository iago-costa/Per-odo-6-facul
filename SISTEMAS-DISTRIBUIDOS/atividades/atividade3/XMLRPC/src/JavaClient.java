/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author warley
 */
import java.net.URL;
import java.util.*;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.apache.xmlrpc.client.XmlRpcClientConfigImpl;

public class JavaClient {

    public static void main(String[] args) {
        String serverURL = "http://localhost:1093";
        try {
            // add code here
            int sum = ((Integer) result).intValue();
            System.out.println("The sum is: " + sum);
        } catch (Exception exception) {
            System.err.println("JavaClient: " + exception);
        }
    }
}
