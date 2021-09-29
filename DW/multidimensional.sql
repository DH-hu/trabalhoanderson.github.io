
CREATE SEQUENCE public.dim_professor_sk_professor_seq;

CREATE TABLE public.dim_professor (
                sk_professor INTEGER NOT NULL DEFAULT nextval('public.dim_professor_sk_professor_seq'),
                nk_professor INTEGER NOT NULL,
                cod_professor INTEGER NOT NULL,
                nome VARCHAR(20) NOT NULL,
                rg VARCHAR(9) NOT NULL,
                dt_nascimento DATE NOT NULL,
                CONSTRAINT sk_professor PRIMARY KEY (sk_professor)
);


ALTER SEQUENCE public.dim_professor_sk_professor_seq OWNED BY public.dim_professor.sk_professor;

CREATE SEQUENCE public.dim_turma_sk_turma_seq;

CREATE TABLE public.dim_turma (
                sk_turma INTEGER NOT NULL DEFAULT nextval('public.dim_turma_sk_turma_seq'),
                nk_turma INTEGER NOT NULL,
                cod_turma INTEGER NOT NULL,
                num_turma VARCHAR(20) NOT NULL,
                dat_inicio DATE NOT NULL,
                sigla VARCHAR(20) NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_turma)
);


ALTER SEQUENCE public.dim_turma_sk_turma_seq OWNED BY public.dim_turma.sk_turma;

CREATE SEQUENCE public.dim_aluno_sk_aluno_seq;

CREATE TABLE public.dim_aluno (
                sk_aluno INTEGER NOT NULL DEFAULT nextval('public.dim_aluno_sk_aluno_seq'),
                nk_aluno INTEGER NOT NULL,
                cod_turma INTEGER NOT NULL,
                nome VARCHAR(20) NOT NULL,
                sexo INTEGER NOT NULL,
                bairro VARCHAR(20) NOT NULL,
                dat_nascimento DATE NOT NULL,
                CONSTRAINT sk_aluno PRIMARY KEY (sk_aluno)
);


ALTER SEQUENCE public.dim_aluno_sk_aluno_seq OWNED BY public.dim_aluno.sk_aluno;

CREATE SEQUENCE public.dim_data_sk_data_seq;

CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL DEFAULT nextval('public.dim_data_sk_data_seq'),
                nk_data DATE NOT NULL,
                dia INTEGER NOT NULL,
                mes INTEGER NOT NULL,
                ano INTEGER NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


ALTER SEQUENCE public.dim_data_sk_data_seq OWNED BY public.dim_data.sk_data;

CREATE SEQUENCE public.ft_matricula_sk_aluno_seq;

CREATE SEQUENCE public.ft_matricula_sk_professor_seq;

CREATE SEQUENCE public.ft_matricula_sk_turma_seq;

CREATE SEQUENCE public.ft_matricula_sk_data_seq;

CREATE TABLE public.ft_matricula (
                sk_aluno INTEGER NOT NULL DEFAULT nextval('public.ft_matricula_sk_aluno_seq'),
                sk_professor INTEGER NOT NULL DEFAULT nextval('public.ft_matricula_sk_professor_seq'),
                sk_turma INTEGER NOT NULL DEFAULT nextval('public.ft_matricula_sk_turma_seq'),
                sk_data INTEGER NOT NULL DEFAULT nextval('public.ft_matricula_sk_data_seq'),
                dd_idmatricula INTEGER NOT NULL,
                dd_hora_matricula VARCHAR(20) NOT NULL,
                md_datamatricula INTEGER NOT NULL,
                md_desconto INTEGER NOT NULL,
                md_valor_total REAL NOT NULL
);


ALTER SEQUENCE public.ft_matricula_sk_aluno_seq OWNED BY public.ft_matricula.sk_aluno;

ALTER SEQUENCE public.ft_matricula_sk_professor_seq OWNED BY public.ft_matricula.sk_professor;

ALTER SEQUENCE public.ft_matricula_sk_turma_seq OWNED BY public.ft_matricula.sk_turma;

ALTER SEQUENCE public.ft_matricula_sk_data_seq OWNED BY public.ft_matricula.sk_data;

ALTER TABLE public.ft_matricula ADD CONSTRAINT dim_professor_ft_matricula_fk
FOREIGN KEY (sk_professor)
REFERENCES public.dim_professor (sk_professor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_matricula ADD CONSTRAINT dim_turma_ft_matricula_fk
FOREIGN KEY (sk_turma)
REFERENCES public.dim_turma (sk_turma)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_matricula ADD CONSTRAINT dim_aluno_ft_matricula_fk
FOREIGN KEY (sk_aluno)
REFERENCES public.dim_aluno (sk_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_matricula ADD CONSTRAINT dim_data_ft_matricula_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;