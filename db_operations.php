<?php
    class DBOperations {
        private $host = 'localhost';
        private $username   = 'root';
        private $password   = '';
        private $dbname     = 'congres';
        private $options    = array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        );

        private $dsn, $connection;

        function __construct(){
            // database connection configuration
            $this->dsn = "mysql:host={$this->host};dbname={$this->dbname}";
            try {
                $this -> connection = new PDO($this -> dsn, $this -> username, $this -> password, $this -> options);
                // echo "Connection successful";
            } catch (PDOException $error) {
                echo $error -> getMessage();
            }
        }

        // database operations methods
        public function query($sql, $params = []) {
            try {
                $stmt = $this -> connection -> prepare($sql);
                $stmt -> execute($params);
                return $stmt;
            } catch(PDOException $error) {
                echo $error -> getMessage();
                return false;
            }
        }

        public function fetch($statement) {
            return $statement -> fetch(PDO::FETCH_ASSOC);
        }

        public function fetchAll($statement) {
            return $statement -> fetchAll(PDO::FETCH_ASSOC);
        }

        public function getRealSessionsData() {
            return $this->fetchAll($this->query("SELECT * FROM sessions where id != 1"));
        }

        public function getOneSessionData($id) {
            return $this->fetch($this->query("SELECT * FROM sessions where id = $id and id != 1"));
        }

        public function getSessionActivitiesOrInauguralSessions($id) {
            return $this->fetchAll($this->query("SELECT * FROM activities WHERE session_id = ?", [$id]));
        }

        public function getPresentationFile($id, $session_id) {
            return ($this->fetch($this->query("SELECT presentation_file_url FROM activities WHERE id = ? and session_id = ?", [$id, $session_id])))['presentation_file_url'];
        }

        public function getRapportFile($id) {
            return ($this->fetch($this->query("SELECT rapport_file_url FROM sessions WHERE id = ? and id != 1", [$id])))['rapport_file_url'];
        }

        public function getSessionPictures($id) {
            return $this->fetchAll($this->query("SELECT * FROM pictures WHERE session_id = ? and session_id != 1", [$id]));
        }
    } 
