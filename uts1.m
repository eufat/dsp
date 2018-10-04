n = [1:100];
x1 = rand(100,1);

a = sqrt(10);
x2 = a.*randn(100,1);

% Problem 1
    % System 1
        % Additivity, n = 1

        a11 = 2^(x1(1) + x2(1));
        a12 = 2^(x1(1)) + 2^(x2(1));

        % Scaling, alpha = 5, n = 1
        alpha = 5;
        s11 = 2^(alpha * x1(1));
        s12 = alpha * 2^(x1(1));

        a1 = [a11 a12]
        s1 = [s11 s12]

        if ((a11 == a12) && (s11 == s12))
            disp("System 1 is linier")
        else 
            disp("System 1 is not linier")
        end









