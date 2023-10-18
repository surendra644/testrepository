public class bookallocation 
{
    public static boolean ispossible(int a[],int mid,int b)
    {
          int spc=0;
          int student=1;
        for(int i=0;i<a.length;i++)
        {
            if(a[i]>mid)
            {
                return false;
            }
            if(spc+a[i]<=mid)
            {
                spc=spc+a[i];
            }
            else
            {
                 student++;
                 if(student>b)
                 {
                    return false;
                 }
                 spc=a[i];
            }

        }
        return true;
    }
    public static void findmaxpages(int a[],int b)
    {
        int l=0,h=0;
        for(int i=0;i<a.length;i++)
        {
            if(a[i]<l)
            {
                l=a[i];
            }
        h=h+a[i];
        }
        int res=-1;
        while(l<=h)
        {
           int mid=(l+h)/2;
           if(ispossible(a, mid, b)==true)
           {
               res=mid;
               h=mid-1;
           }
           else
           {
             l=mid+1;
           }
        }
        System.out.println(res);
              
    }
    public static void main(String[] args) 
    {
        {
               int[] arr={12,34,67,90};
               findmaxpages(arr, 2);

        }
    }
    
}
