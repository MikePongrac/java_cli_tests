package com.g2.ExecJar;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Start {

	public static void main(String[] args) {

		try {
			InputStreamReader io = new InputStreamReader( System.in );
			BufferedReader read = new BufferedReader(io);

			System.out.println("Enter Name");
			Person p = new Person();
			p.setName(read.readLine());

			System.out.println("Enter Age");
			p.setAge(Integer.parseInt( read.readLine()) );

			System.out.println( "-------- You have Eneterd --------- " );
			System.out.println("Name : " + p.getName());
			System.out.println("Age : " + p.getAge());

			System.out.println( "---------- Progarm run by executable jar ------------ " );

		} catch (IOException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			System.out.println("Age entered is not in correct format");
		}
	}
}
