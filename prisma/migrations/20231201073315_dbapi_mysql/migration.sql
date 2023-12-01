-- CreateTable
CREATE TABLE `clientes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `cep` VARCHAR(20) NOT NULL,
    `endereco` VARCHAR(50) NOT NULL,
    `complemento` VARCHAR(20) NOT NULL,
    `bairro` VARCHAR(50) NOT NULL,
    `cidade` VARCHAR(50) NOT NULL,
    `uf` VARCHAR(2) NOT NULL,
    `celular` VARCHAR(20) NOT NULL,
    `email` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `livro` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `paginas` INTEGER NOT NULL,
    `autor` VARCHAR(255) NOT NULL,
    `editora` VARCHAR(255) NOT NULL,
    `lancamento` VARCHAR(255) NOT NULL,
    `titulo` VARCHAR(255) NOT NULL,
    `livro_id` BIGINT NULL,

    INDEX `FKtc0w4x5niti4nft8ws9jwfytd`(`livro_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `livros` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(255) NULL,
    `author` VARCHAR(255) NULL,
    `editora` VARCHAR(255) NULL,
    `paginas` INTEGER NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sequelizemeta` (
    `name` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `name`(`name`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tutorials` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `published` BOOLEAN NULL,
    `createdAt` DATETIME(0) NOT NULL,
    `updatedAt` DATETIME(0) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `livro` ADD CONSTRAINT `FKtc0w4x5niti4nft8ws9jwfytd` FOREIGN KEY (`livro_id`) REFERENCES `livro`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
