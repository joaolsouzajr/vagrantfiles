FROM fedora


RUN dnf -y install postgresql-server

RUN postgresql-setup initdb

RUN systemctl enable postgresql.service
RUN systemctl start postgresql.service

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf

RUN echo "listen_addresses='*'" >> /etc/postgresql/8.3/main/postgresql.conf


EXPOSE 5432

CMD postgresql-setup initdb && systemctl start postgresql.service
