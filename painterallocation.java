/*Given are N boards of with length of each given in the form of array, and K painters, such that each painter takes 1 unit of 
time to paint 1 unit of the board. The task is to find the minimum time to paint all boards under the constraints that any painter
 will only paint continuous sections of boards, 
say board {2, 3, 4} or only board {1} or nothing but not board {2, 4, 5}.
Examples: 
Input: N = 4, A = {10, 10, 10, 10}, K = 2 
Output : 20
Explanation: Here we can divide the boards into 2 equal sized partitions (Painter 1 will paint boards A1 and A2, 
and Painter 2 will paint boards A3 and A4). So each painter gets 20 units of board and the total time taken is 20. 
Input: N = 4, A = {10, 20, 30, 40}, K = 2 
Output : 60*/
public class painterallocation
 {
    public static boolean ispossible(int a[],int mid,int b)
    {
          int pbc=0;
          int painter=1;
        for(int i=0;i<a.length;i++)
        {
            if(a[i]>mid)
            {
                return false;
            }
            if(pbc+a[i]<=mid)
            {
                pbc=pbc+a[i];
            }
            else
            {
                 painter++;
                 if(painter>b)
                 {
                    return false;
                 }
                 pbc=a[i];
            }

        }
        return true;
    }
    public static void find_grid_to_paint(int a[],int b)
    {
        int l=0,h=0;
        for(int i=0;i<a.length;i++)
        {
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
               int[] arr={10,20,30,40};
               find_grid_to_paint(arr, 2);

        }
    }
    
}
