create table if not exists public.birthday_sites (slug text primary key check (slug ~ '^[a-f0-9]{12}$'), data jsonb not null, edit_token_hash text not null, created_at timestamptz not null default now());
alter table public.birthday_sites enable row level security;
insert into storage.buckets (id,name,public,file_size_limit,allowed_mime_types) values ('happyday-media','happyday-media',true,3145728,array['image/jpeg','audio/mpeg']) on conflict (id) do update set public=true,file_size_limit=3145728,allowed_mime_types=array['image/jpeg','audio/mpeg'];
-- API Vercel menggunakan service_role. Jangan masukkan key ini ke frontend.
