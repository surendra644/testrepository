// woodcutting problem asked in flipkart
public class woodcuttingproblem {
    public static int find_wood_count(int[] arr,int mid)
    {
        int wc=0;
        for(int i:arr)
        {
            if(i>mid)
            {
                wc+=i-mid;
            }
        }
         
        return wc;
    }
    public static int find_height_tree(int[] arr,int b)
    {
        int l=0;
        int h=0;
        int ans=0;
             for(int i=0;i<arr.length;i++)
             {
                  if(arr[i]>h)
                  {
                    h=arr[i];
                  }
             }

    
             while(l<=h)
             {
                int mid=l+(h-l)/2;
                int wc=find_wood_count(arr, mid);
                if(wc==b|| l==mid)
                {
                    return mid;
                }
                else if(wc>b)
                {
                    l=mid;
                }
                else
                {
                    h=mid;
                }
             }
            return  ans;         
            
      }
    public static void main(String[] args) 
     {
        {
               int[] arr={4,42,40,26,46};
              System.out.println(find_height_tree(arr,20));
               

        }
     }
    
}
