import jm.util.*;

public final class ReadAudio{
	public static void main(String[] args){
		float[] data = Read.audio(args[0]);
		for( int i=0; i< data.length; i++){
			System.out.print(data[i]+" ");
		}
	}
}
