SELECT
    now (),
    CURRENT_DATE,
    CURRENT_TIME,
    DATE_PART ('hours', now ()) as horas,
    DATE_PART ('minutes', now ()) as minutos,
    DATE_PART ('seconds', now ()) as segundos,
    DATE_PART ('days', now ()) as dia,
    DATE_PART ('months', now ()) as mes,
    DATE_PART ('years', now ()) as año