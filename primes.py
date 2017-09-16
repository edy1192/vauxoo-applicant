"""
Prime number class
"""
import math


class PrimeClass(object):
    """
    Prime Numbers Class
    """
    def is_prime(self, num_int):
        """
        Check if a number is prime number
        """
        if num_int == 2:
            return True

        if num_int % 2 == 0 or num_int <= 1:
            return False

        sqr = int(math.sqrt(num_int)) + 1
        for num in range(3, sqr, 2):
            if num_int % num == 0:
                return False
        return True
