package pl.coderslab.zarmex.converter;

import org.springframework.core.convert.converter.Converter;

import java.util.Date;

public class DateConverter implements Converter<String, Date> {

        @Override
        public Date convert(String s) {
            return new Date(s);
        }
    }
