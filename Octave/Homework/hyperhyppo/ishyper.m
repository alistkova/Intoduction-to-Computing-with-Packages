function res = ishyper(A)
% Проверяет, является ли общее уравнение поверхности второго порядка, определяемое матрицей коэффициентов А, уравнением однополостного гиперболоида либо гипреболичесокго параблоида
    eigenvalues = eig(A);
    if all(eigenvalues > 0) || all(eigenvalues < 0) || (sum(eigenvalues == 0) == 1)
        res = true;
    else
        res = false;
    end
end
