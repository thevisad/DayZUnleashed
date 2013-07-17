
    if (dayz_perceptibility > 0) then {
        dayz_perceptibility = dayz_perceptibility - dayz_perceptibility_decay;
    };

    if (dayz_perceptibility < 0 ) then {
        dayz_perceptibility = 0;
    };
