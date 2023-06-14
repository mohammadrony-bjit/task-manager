USE task_manager;

CREATE TABLE `tbl_lists` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(50) NOT NULL,
  `list_description` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `tbl_lists`
INSERT INTO `tbl_lists` (`list_id`, `list_name`, `list_description`) VALUES
(1, 'To Do', 'All the tasks that must be done soon.'),
(2, 'Doing', 'All the tasks that are currently being done.'),
(3, 'Done', 'All the tasks that are completed.'),
(7, 'Shopping', 'Tasks for shopping.');

-- Table structure for table `tbl_tasks`
CREATE TABLE `tbl_tasks` (
  `task_id` int(10) UNSIGNED NOT NULL,
  `task_name` varchar(150) NOT NULL,
  `task_description` text NOT NULL,
  `list_id` int(11) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `deadline` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `tbl_tasks`
INSERT INTO `tbl_tasks` (`task_id`, `task_name`, `task_description`, `list_id`, `priority`, `deadline`) VALUES
(2, 'Icon Design', 'This is urgent', 1, 'High', '2020-06-03'),
(3, 'Buy Things', 'Okay Buy', 3, 'Medium', '2020-06-12'),
(4, 'Web Page Design', 'All the tasks for Web Page Design', 1, 'Medium', '2020-06-11'),
(5, 'Application Development', 'All the tasks', 1, 'Low', '2020-07-03'),
(6, 'SEO', 'Search Engine Optimization', 2, 'Medium', '2020-06-19'),
(7, 'Desktop Application Development', 'This is important', 3, 'Low', '2020-06-26'),
(8, '4K Monitor', 'For Video Editing', 1, 'Medium', '2020-06-18');

-- Indexes for dumped tables

-- Indexes for table `tbl_lists`
ALTER TABLE `tbl_lists`
  ADD PRIMARY KEY (`list_id`);

-- Indexes for table `tbl_tasks`
ALTER TABLE `tbl_tasks`
  ADD PRIMARY KEY (`task_id`);

-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `tbl_lists`
ALTER TABLE `tbl_lists`
  MODIFY `list_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- AUTO_INCREMENT for table `tbl_tasks`
ALTER TABLE `tbl_tasks`
  MODIFY `task_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;