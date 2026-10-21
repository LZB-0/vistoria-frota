-- Execute este SQL no Supabase > SQL Editor > New query.
-- Ele acrescenta os campos usados pelo site à tabela public.vistorias já criada.
alter table public.vistorias
  add column if not exists data_vistoria timestamptz not null default now(),
  add column if not exists responsavel text,
  add column if not exists situacao_troca text;

-- As políticas existentes devem restringir leitura e alterações a usuários autenticados.
-- Se você já executou as políticas da etapa anterior, não precisa recriá-las.
