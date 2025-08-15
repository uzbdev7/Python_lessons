class Students:
    def __init__(self,name:str, student_id:str)->None:
        self.name = name
        self.student_id = student_id
        self.__grades = []
        
    def add_grades(self,grade:int)->None:
        self.grade = grade
        self.__grades.append(grade)
        print(f"{grade} bahosi qo'shildi")

    def calculate_average(self)->float:
        self.average_sum = sum(self.__grades)/len(self.__grades)
        return self.average_sum
    
    def get_status(self)->float:
        if self.average_sum < 100:
         if self.average_sum > 90:
            print("A'lo")
         elif self.average_sum > 80:
            print("Yaxshi")
         elif self.average_sum > 70:
             print("Qoniqarli")
         else:
             print("Qoniqarsiz")
        else:
            print("Notog'ri baxo")

obj = Students("Nodira","S123")
obj.add_grades(85)
obj.add_grades(90)
print(obj.calculate_average())
obj.get_status()

    
    
    