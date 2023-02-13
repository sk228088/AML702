%% matlab code for LU factorization
function x = lu_factorization(A,b)
    [m, n] = size(A);
    if m ~= n
        error("Matrix must be square.");
    end
    P = eye(n);
    L = zeros(n);
    U = A;
    for k = 1:n-1
        [p, m] = max(abs(U(k:n,k)));
        m = m + k - 1;
        if m ~= k
            U([k, m], :) = U([m, k], :);
            P([k, m], :) = P([m, k], :);
            if k >= 2
                L([k, m], 1:k-1) = L([m, k], 1:k-1);
            end
        end
        for j = k+1:n
            L(j, k) = U(j, k) / U(k, k);
            U(j, k:n) = U(j, k:n) - L(j, k) * U(k, k:n);
        end
    end
    L = L + eye(n);
    y = L \ (P*b);
    x = U \ y;
    sprintf('L',L);
    sprintf('U',U);
    [L_ref U_ref] = lu(A);
    sprintf('L_ref',L_ref);
    sprintf('U_ref',U_ref);


end
