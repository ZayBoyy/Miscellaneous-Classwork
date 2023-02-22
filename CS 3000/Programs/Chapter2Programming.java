public class Chapter2Programming {

    public void insertionSort(int[] A){
        for (int j = 2; j < A.length; j++) {
            int key = A[j];
            //Insert A[j] into the sorted sequence A[1..j-1]
            int i = j - 1;
            while (i > 0 && A[i] > key) {
                A[i + 1] = A[i];
                i--;
                A[i + 1] = key;
            }
        }
    }

    public void reverseInsertionSort (int[] A) {
        for (int j = 2; j < A.length; j++) {
            int key = A[j];
            //Insert A[j] into the sorted sequence A[1..j-1]
            int i = j - 1;
            while (i > 0 && A[i] < key) {
                A[i + 1] = A[i];
                i--;
                A[i + 1] = key;
            }
        }
    }

    public static void main (String[]args) {

    }

}
