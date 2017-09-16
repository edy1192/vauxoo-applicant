"""
Calculator Class
"""


class CalculatorClass(object):
    """
    Class to calculate the sum of a list
    """
    def sum(self, num_list):
        """
        Sum a list of numbers
        """
        result = 0
        for num in num_list:
            result += num
        return result
