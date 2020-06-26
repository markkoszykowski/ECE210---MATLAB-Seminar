classdef Flower
    properties
        petalWidth;
        petalLength;
        sepalWidth;
        sepalLength;
        species;
    end
    
    methods
        function obj = Flower(a, b, c, d, e)
            if nargin > 0
                obj.petalWidth = a;
                obj.petalLength = b;
                obj.sepalWidth = c;
                obj.sepalLength = d;
                obj.species = e;
            end
        end
        function wid = getSWidth(flower)
            wid = flower.sepalWidth;
        end
        function report(flower)
            fprintf('The length and width of its sepal are %.1fcm and %.1fcm respectively, while the length and width of its petal are %.1fcm and %.1fcm respectively. It belongs to the %s species.', flower.sepalLength, flower.sepalWidth, flower.petalLength, flower.petalWidth, flower.species)
        end
    end
end

