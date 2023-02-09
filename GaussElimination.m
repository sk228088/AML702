%% Gauss elimination
function x = GaussElimination(A, b)
    [n, n] = size(A);
    for i = 1:n-1
        [~, m] = max(abs(A(i:n,i)));
        m = m + i - 1;
        if m ~= i
            temp = A(i,:);
            A(i,:) = A(m,:);
            A(m,:) = temp;
            temp = b(i);
            b(i) = b(m);
            b(m) = temp;
        end
        for j = i+1:n
            scale = A(j,i)/A(i,i);
            A(j,i:n) = A(j,i:n) - scale*A(i,i:n);
            b(j) = b(j) - scale*b(i);
        end
    end
    x = zeros(n,1);
    x(n) = b(n)/A(n,n);
    for i = n-1:-1:1
        x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end
