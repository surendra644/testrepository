/*
 Given that there are N books and M students. Also given are the number of pages in each book in ascending order. 
 The task is to assign books in such a way that the maximum number of pages assigned to a student is minimum, with
the condition that every student is assigned to read some consecutive books. Print that minimum number of pages.
Input: N = 4, pages[] = {12, 34, 67, 90}, M = 2
Output: 113
Explanation: There are 2 number of students. Books can be distributed in following combinations: 
[12] and [34, 67, 90] -> Max number of pages is allocated to student ‘2’ with 34 + 67 + 90 = 191 pages
[12, 34] and [67, 90] -> Max number of pages is allocated to student ‘2’ with 67 + 90 = 157 pages 
[12, 34, 67] and [90] -> Max number of pages is allocated to student ‘1’ with 12 + 34 + 67 = 113 pages
Of the 3 cases, Option 3 has the minimum pages = 113.
*/
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
