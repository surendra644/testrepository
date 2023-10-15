// find minimum element in java
public class finminror 
{
    public static int findmin(int arr[])
    {
            int st=0;
             int end=arr.length-1;
             int n=arr.length;
             int ans=0;
             while(st<=end)
             {
                int mid=st+(end-st)/2;
                if(arr[mid]>arr[n-1])
                {
                    st=mid+1;
                }
                else
                {
                   ans=mid;
                   end=mid-1;
                }
             }
             return ans;
    }
     public static void main(String[] args) 
     {
        {
               int[] arr={6,5,4,1,2};
               int z=findmin(arr);
               System.out.println(z);
        }
     }
}
