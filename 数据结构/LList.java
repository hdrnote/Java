package datastructure.linear;


/**
 * �������Ա�ӿ�
*/

public interface LList<T> 
{
	boolean isEmpty() ;
	
	int length();
	
	T get(int i);
	
	void set(int i, T x);
	
	void insert(int i , T x);
	
	void append(T x) ;
	
	T remove(int i , T x);
	
	void removeAll(T x);
	
	T search(T key);
}