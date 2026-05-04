#!/usr/bin/env ruby

class CaesarCipher
    def initialize(shift)
        @shift = shift
    end

    def encrypt(message)
        cipher(message, @shift)
    end

    def decrypt(message)
        cipher(message, -@shift)
    end

    def cipher(message, shift)
        alphabet_az = ("a".."z").to_a.join
        alphabet_AZ = ("A".."Z").to_a.join
        i = shift % alphabet_az.size

        encrypt_az = alphabet_az.chars.rotate(i).join
        encrypt_AZ = alphabet_AZ.chars.rotate(i).join

        result = ""
        message.each_char do |letter|
            if ("a".."z") === letter
                letter = letter.tr( alphabet_az, encrypt_az )
                result << letter
            elsif ("A".."Z") === letter
                letter = letter.tr( alphabet_AZ, encrypt_AZ )
                result << letter
            else
                result << letter
            end
        end
        result
    end
end
