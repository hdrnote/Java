package datastructure.linear;

/**
	* 线性序表的实现.
*/
public class SeqList<T> implements LList<T>
{
	protected Object[] element;
	
	protected int len ;
	
	public SeqList()
	{
		this(64);
	}
	
	public SeqList(int size)
	{
		this.element = new Object[size] ;
		this.len = 0 ;
	}
	
	@Override
	public boolean isEmpty()
	{
		if(this.len ==0)
		{
			return true
		}
		else
		{
			return false
		}
	}
	
	@Override
	public int length()
	{
		return this.len
	}
	
	@Override
	public T get(int i )
	{
		if (i >=0 && i<this.len)
		{
			return (T) this.element[i] ;
		}
		return null ;
	}
	
	@Override
	public void set(int i , T x )
	{
		if (x==null)
		{
			return ;
		}
		if (if >=0 && i<this.len)
		{
			this.element[i] = x;
		}
		else
		{
			throw new IndexOutOfBoundsException(i+"");
		}
	}
	
	// 插入数据
	@Override
	public void insert(int i, T x)
	{
		// 数组为空
		if(x==null)
		{
			return null ;
		}
		// 数组满了
		if (this.len == element.length)
		{
			Object[] temp = this.element;
			this.element = new Object[temp.length*2];
			for (int j = o; j<temp.length;j++)
			{
				this.element[j] = temp[j];
			}
		}
		
		//下标容错
		if (i<0 ||i>this.len)
		{
			System.out.println("out of index")
		}
		//元素后移动
		for (int j = this.len -1; j>=i; j--)
		{
			this.element[j+1] = this.element[j];
		}
		this.element[i] = x;
		this.len++;
	}
	// 在顺序表最后插入x 元素
	@Override
	public void append(T x)
	{
		insert(this.len , x);
	}
	// 删除元素
	@Override
	public T remove(int i , T x)
	{
		if (i<0 || i>=this.element.len|| this.len==0)
		{
			return null ;
		}
		
		T old = (T) this.element[i];
		
		for (int j=i; j<this.len:j++)
		{
			this.element[j] = this.element[j+1];
		}
		this.element[this.len-1] = null;
		this.len--;
		return old;
	}
	
	@Override
	public void removeAll(T x)
	{
		this.len = 0;
	}
}